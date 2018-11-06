.class public Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;
.super Ljava/lang/Object;
.source "WifiBackupRestore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiBackupRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SupplicantBackupMigration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;,
        Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetworks;
    }
.end annotation


# static fields
.field private static final PSK_MASK_LINE_MATCH_PATTERN:Ljava/lang/String; = ".*psk.*=.*"

.field private static final PSK_MASK_REPLACE_PATTERN:Ljava/lang/String; = "$1*"

.field private static final PSK_MASK_SEARCH_PATTERN:Ljava/lang/String; = "(.*psk.*=)(.*)"

.field public static final SUPPLICANT_KEY_AUTH_ALG:Ljava/lang/String; = "auth_alg"

.field public static final SUPPLICANT_KEY_AUTO_RECONNECT:Ljava/lang/String; = "autojoin"

.field public static final SUPPLICANT_KEY_CA_CERT:Ljava/lang/String; = "ca_cert"

.field public static final SUPPLICANT_KEY_CA_PATH:Ljava/lang/String; = "ca_path"

.field public static final SUPPLICANT_KEY_CLIENT_CERT:Ljava/lang/String; = "client_cert"

.field public static final SUPPLICANT_KEY_EAP:Ljava/lang/String; = "eap"

.field public static final SUPPLICANT_KEY_HIDDEN:Ljava/lang/String; = "scan_ssid"

.field public static final SUPPLICANT_KEY_ID_STR:Ljava/lang/String; = "id_str"

.field public static final SUPPLICANT_KEY_KEY_MGMT:Ljava/lang/String; = "key_mgmt"

.field public static final SUPPLICANT_KEY_PSK:Ljava/lang/String; = "psk"

.field public static final SUPPLICANT_KEY_SSID:Ljava/lang/String; = "ssid"

.field public static final SUPPLICANT_KEY_WEP_KEY0:Ljava/lang/String;

.field public static final SUPPLICANT_KEY_WEP_KEY1:Ljava/lang/String;

.field public static final SUPPLICANT_KEY_WEP_KEY2:Ljava/lang/String;

.field public static final SUPPLICANT_KEY_WEP_KEY3:Ljava/lang/String;

.field public static final SUPPLICANT_KEY_WEP_KEY_IDX:Ljava/lang/String; = "wep_tx_keyidx"

.field private static final WEP_KEYS_MASK_LINE_MATCH_PATTERN:Ljava/lang/String;

.field private static final WEP_KEYS_MASK_REPLACE_PATTERN:Ljava/lang/String; = "$1*"

.field private static final WEP_KEYS_MASK_SEARCH_PATTERN:Ljava/lang/String;

.field private static final mLocalLog:Landroid/util/LocalLog;


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->SUPPLICANT_KEY_WEP_KEY0:Ljava/lang/String;

    sget-object v0, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->SUPPLICANT_KEY_WEP_KEY1:Ljava/lang/String;

    sget-object v0, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->SUPPLICANT_KEY_WEP_KEY2:Ljava/lang/String;

    sget-object v0, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->SUPPLICANT_KEY_WEP_KEY3:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ".*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->SUPPLICANT_KEY_WEP_KEY0:Ljava/lang/String;

    const-string/jumbo v2, "0"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".*=.*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->WEP_KEYS_MASK_LINE_MATCH_PATTERN:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(.*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->SUPPLICANT_KEY_WEP_KEY0:Ljava/lang/String;

    const-string/jumbo v2, "0"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".*=)(.*)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->WEP_KEYS_MASK_SEARCH_PATTERN:Ljava/lang/String;

    new-instance v1, Landroid/util/LocalLog;

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x80

    :goto_0
    invoke-direct {v1, v0}, Landroid/util/LocalLog;-><init>(I)V

    sput-object v1, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->mLocalLog:Landroid/util/LocalLog;

    return-void

    :cond_0
    const/16 v0, 0x100

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLogFromBackupData([B)Ljava/lang/String;
    .locals 9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v5, v4

    const-string/jumbo v7, ".*psk.*=.*"

    invoke-virtual {v1, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "(.*psk.*=)(.*)"

    const-string/jumbo v8, "$1*"

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    sget-object v7, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->WEP_KEYS_MASK_LINE_MATCH_PATTERN:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->WEP_KEYS_MASK_SEARCH_PATTERN:Ljava/lang/String;

    const-string/jumbo v8, "$1*"

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, ""

    return-object v4

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p0, p1, p2}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method private static localLog(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "WifiBackupRestore"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
