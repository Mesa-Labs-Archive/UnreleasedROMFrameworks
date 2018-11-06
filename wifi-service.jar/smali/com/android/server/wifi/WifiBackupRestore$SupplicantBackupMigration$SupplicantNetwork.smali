.class Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;
.super Ljava/lang/Object;
.source "WifiBackupRestore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SupplicantNetwork"
.end annotation


# instance fields
.field public certUsed:Z

.field public isEap:Z

.field private mParsedAuthAlgLine:Ljava/lang/String;

.field private mParsedAutoReconnectLine:Ljava/lang/String;

.field private mParsedHiddenLine:Ljava/lang/String;

.field private mParsedIdStrLine:Ljava/lang/String;

.field private mParsedKeyMgmtLine:Ljava/lang/String;

.field private mParsedPskLine:Ljava/lang/String;

.field private mParsedSSIDLine:Ljava/lang/String;

.field private mParsedWepKeyLines:[Ljava/lang/String;

.field private mParsedWepTxKeyIdxLine:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedKeyMgmtLine:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedSSIDLine:Ljava/lang/String;

    return-object v0
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->certUsed:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->isEap:Z

    return-void
.end method

.method public static readNetworkFromStream(Ljava/io/BufferedReader;)Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;
    .locals 5

    const/4 v4, 0x0

    new-instance v2, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;

    invoke-direct {v2}, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->ready()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-object v2

    :cond_1
    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->parseLine(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    return-object v4
.end method


# virtual methods
.method public createWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 15

    iget-object v11, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedSSIDLine:Ljava/lang/String;

    if-nez v11, :cond_0

    const/4 v11, 0x0

    return-object v11

    :cond_0
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v11, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedSSIDLine:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedSSIDLine:Ljava/lang/String;

    const/16 v13, 0x3d

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v11, :cond_1

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v9

    :cond_1
    const/4 v11, 0x2

    if-le v9, v11, :cond_2

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x22

    if-eq v11, v12, :cond_2

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v12, v9, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x22

    if-eq v11, v12, :cond_2

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->decodingSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iput-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :cond_2
    iget-object v11, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedHiddenLine:Ljava/lang/String;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedHiddenLine:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedHiddenLine:Ljava/lang/String;

    const/16 v13, 0x3d

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_b

    const/4 v11, 0x1

    :goto_0
    iput-boolean v11, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :cond_3
    const-string/jumbo v11, "WifiBackupRestore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Parsed key_mgmt line: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedKeyMgmtLine:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedKeyMgmtLine:Ljava/lang/String;

    if-nez v11, :cond_c

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    :cond_4
    iget-object v11, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedPskLine:Ljava/lang/String;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedPskLine:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedPskLine:Ljava/lang/String;

    const/16 v13, 0x3d

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_5
    iget-object v11, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    if-eqz v11, :cond_6

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v12, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    iget-object v13, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/16 v14, 0x3d

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    :cond_6
    iget-object v11, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    if-eqz v11, :cond_7

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v12, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    iget-object v13, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/16 v14, 0x3d

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    :cond_7
    iget-object v11, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    if-eqz v11, :cond_8

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v12, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    const/4 v13, 0x2

    aget-object v12, v12, v13

    iget-object v13, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    const/4 v14, 0x2

    aget-object v13, v13, v14

    const/16 v14, 0x3d

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    aput-object v12, v11, v13

    :cond_8
    iget-object v11, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    const/4 v12, 0x3

    aget-object v11, v11, v12

    if-eqz v11, :cond_9

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v12, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    const/4 v13, 0x3

    aget-object v12, v12, v13

    iget-object v13, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    const/4 v14, 0x3

    aget-object v13, v13, v14

    const/16 v14, 0x3d

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    aput-object v12, v11, v13

    :cond_9
    iget-object v11, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepTxKeyIdxLine:Ljava/lang/String;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepTxKeyIdxLine:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepTxKeyIdxLine:Ljava/lang/String;

    const/16 v13, 0x3d

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    :cond_a
    iget-object v11, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedIdStrLine:Ljava/lang/String;

    if-eqz v11, :cond_19

    iget-object v11, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedIdStrLine:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedIdStrLine:Ljava/lang/String;

    const/16 v13, 0x3d

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_19

    invoke-static {v7}, Lcom/android/server/wifi/util/NativeUtil;->removeEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->parseNetworkExtra(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_16

    const/4 v11, 0x0

    return-object v11

    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_c
    iget-object v11, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedKeyMgmtLine:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedKeyMgmtLine:Ljava/lang/String;

    const/16 v13, 0x3d

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v11, "\\s+"

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v6, 0x0

    :goto_1
    array-length v11, v10

    if-ge v6, v11, :cond_4

    aget-object v8, v10, v6

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->cardinality()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_d

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-nez v11, :cond_d

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_d

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x7

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_d

    const-string/jumbo v11, "WifiBackupRestore"

    const-string/jumbo v12, "There are many secure types - skip"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return-object v11

    :cond_d
    const-string/jumbo v11, "NONE"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    :cond_e
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_f
    const-string/jumbo v11, "FT-PSK"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x6

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    :cond_10
    const-string/jumbo v11, "WPA-EAP"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    :cond_11
    const-string/jumbo v11, "IEEE8021X"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    :cond_12
    const-string/jumbo v11, "WPA-PSK"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    :cond_13
    const-string/jumbo v11, "FT-EAP"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x7

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    :cond_14
    const-string/jumbo v11, "WAPI-PSK"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    :cond_15
    const-string/jumbo v11, "WAPI-CERT"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v12, 0x9

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    :cond_16
    const-string/jumbo v11, "configKey"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_17

    const/4 v11, 0x0

    return-object v11

    :cond_17
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_18

    const-string/jumbo v11, "WifiBackupRestore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Configuration key does not match. Retrieved: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", Calculated: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const-string/jumbo v11, "creatorUid"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v11, 0x2710

    if-lt v3, v11, :cond_19

    const/4 v11, 0x0

    return-object v11

    :cond_19
    iget-object v11, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedAutoReconnectLine:Ljava/lang/String;

    if-eqz v11, :cond_1a

    iget-object v11, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedAutoReconnectLine:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedAutoReconnectLine:Ljava/lang/String;

    const/16 v13, 0x3d

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v2, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    :cond_1a
    iget-object v11, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedAuthAlgLine:Ljava/lang/String;

    if-eqz v11, :cond_1c

    iget-object v11, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedAuthAlgLine:Ljava/lang/String;

    const-string/jumbo v12, "OPEN"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1b

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    :cond_1b
    iget-object v11, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedAuthAlgLine:Ljava/lang/String;

    const-string/jumbo v12, "SHARED"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1c

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    :cond_1c
    return-object v2
.end method

.method decodingSsid(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v4, "gbk"

    invoke-static {}, Lcom/android/server/wifi/WifiBackupRestore;->-get0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "ksc5601"

    invoke-static {}, Lcom/android/server/wifi/WifiBackupRestore;->-get0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    array-length v4, v0

    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Lcom/android/server/wifi/util/NativeUtil;->isUTF8String([BJ)Z

    move-result v4

    if-nez v4, :cond_1

    array-length v4, v0

    invoke-static {v0, v4}, Lcom/android/server/wifi/util/NativeUtil;->isUCNVString([BI)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    const-string/jumbo v4, "gbk"

    invoke-static {}, Lcom/android/server/wifi/WifiBackupRestore;->-get0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v4, "gbk"

    invoke-direct {v2, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->addEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "decoded SSID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->-wrap0(Ljava/lang/String;)V

    return-object v1

    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v4, "ksc5601"

    invoke-direct {v2, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v4, "WifiBackupRestore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " loadWifiConfiguration, byteArray decode error  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/util/NativeUtil;->encodeSsid(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/util/NativeUtil;->encodeSsid(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method parseLine(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "ssid="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedSSIDLine:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "scan_ssid="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedHiddenLine:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "key_mgmt="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object p1, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedKeyMgmtLine:Ljava/lang/String;

    const-string/jumbo v0, "EAP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->isEap:Z

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "client_cert="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->certUsed:Z

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "ca_cert="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->certUsed:Z

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "ca_path="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->certUsed:Z

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "eap="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->isEap:Z

    goto :goto_0

    :cond_8
    const-string/jumbo v0, "psk="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iput-object p1, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedPskLine:Ljava/lang/String;

    goto :goto_0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->SUPPLICANT_KEY_WEP_KEY0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->SUPPLICANT_KEY_WEP_KEY1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    aput-object p1, v0, v2

    goto/16 :goto_0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->SUPPLICANT_KEY_WEP_KEY2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p1, v0, v1

    goto/16 :goto_0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->SUPPLICANT_KEY_WEP_KEY3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p1, v0, v1

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v0, "wep_tx_keyidx="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iput-object p1, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepTxKeyIdxLine:Ljava/lang/String;

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v0, "id_str="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iput-object p1, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedIdStrLine:Ljava/lang/String;

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v0, "autojoin="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iput-object p1, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedAutoReconnectLine:Ljava/lang/String;

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v0, "auth_alg="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedAuthAlgLine:Ljava/lang/String;

    goto/16 :goto_0
.end method
