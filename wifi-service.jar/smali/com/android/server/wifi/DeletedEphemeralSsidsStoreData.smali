.class public Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;
.super Ljava/lang/Object;
.source "DeletedEphemeralSsidsStoreData.java"

# interfaces
.implements Lcom/android/server/wifi/WifiConfigStore$StoreData;


# static fields
.field private static final XML_TAG_SECTION_HEADER_DELETED_EPHEMERAL_SSID_LIST:Ljava/lang/String; = "DeletedEphemeralSSIDList"

.field private static final XML_TAG_SSID_LIST:Ljava/lang/String; = "SSIDList"


# instance fields
.field private mSsidList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeData(Lorg/xmlpull/v1/XmlPullParser;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    if-eqz p3, :cond_1

    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v3, "Share data not supported"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    aget-object v2, v1, v5

    const-string/jumbo v3, "SSIDList"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;->mSsidList:Ljava/util/Set;

    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/wifi/util/XmlUtil;->isNextSectionEnd(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    aget-object v2, v1, v5

    if-nez v2, :cond_0

    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v3, "Missing value name"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown tag under DeletedEphemeralSSIDList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "DeletedEphemeralSSIDList"

    return-object v0
.end method

.method public getSsidList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;->mSsidList:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;->mSsidList:Ljava/util/Set;

    return-object v0
.end method

.method public resetData(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;->mSsidList:Ljava/util/Set;

    :cond_0
    return-void
.end method

.method public serializeData(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "Share data not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;->mSsidList:Ljava/util/Set;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "SSIDList"

    iget-object v1, p0, Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;->mSsidList:Ljava/util/Set;

    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setSsidList(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;->mSsidList:Ljava/util/Set;

    return-void
.end method

.method public supportShareData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
