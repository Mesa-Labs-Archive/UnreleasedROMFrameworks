.class public Lcom/android/server/wifi/WifiCountryCode;
.super Ljava/lang/Object;
.source "WifiCountryCode.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiCountryCode"


# instance fields
.field private DBG:Z

.field private mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentCountryCode:Ljava/lang/String;

.field private mDefaultCountryCode:Ljava/lang/String;

.field private mIsWifiOnly:I

.field private mNeedToUpdateCountryCode:Z

.field private mReady:Z

.field private mRevertCountryCodeOnCellularLoss:Z

.field private mTelephonyCountryCode:Ljava/lang/String;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiNative;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiCountryCode;->mReady:Z

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiCountryCode;->mNeedToUpdateCountryCode:Z

    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mDefaultCountryCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mCurrentCountryCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mCm:Landroid/net/ConnectivityManager;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mIsWifiOnly:I

    iput-object p1, p0, Lcom/android/server/wifi/WifiCountryCode;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iput-object p2, p0, Lcom/android/server/wifi/WifiCountryCode;->mContext:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/android/server/wifi/WifiCountryCode;->mRevertCountryCodeOnCellularLoss:Z

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mDefaultCountryCode:Ljava/lang/String;

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mRevertCountryCodeOnCellularLoss:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WifiCountryCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Country code will be reverted to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiCountryCode;->mDefaultCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " on MCC loss"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mRevertCountryCodeOnCellularLoss:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiCountryCode"

    const-string/jumbo v1, "config_wifi_revert_country_code_on_cellular_loss is set, but there is no default country code."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiCountryCode;->mRevertCountryCodeOnCellularLoss:Z

    return-void
.end method

.method private checkAndSetConnectivityInstance()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mCm:Landroid/net/ConnectivityManager;

    :cond_0
    return-void
.end method

.method private pickCountryCode()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mDefaultCountryCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mDefaultCountryCode:Ljava/lang/String;

    return-object v0

    :cond_1
    return-object v1
.end method

.method private updateCountryCode()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WifiCountryCode"

    const-string/jumbo v3, "Update country code"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->pickCountryCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0, v4}, Lcom/android/server/wifi/WifiCountryCode;->setCountryCodeNative(Ljava/lang/String;Z)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiCountryCode;->isWifiOnly()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "ro.csc.countryiso_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    move-object v0, v1

    invoke-virtual {p0, v1, v4}, Lcom/android/server/wifi/WifiCountryCode;->setCountryCodeNative(Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "WifiCountryCode"

    const-string/jumbo v3, "country == null && !isWifiOnly()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized airplaneModeEnabled()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiCountryCode"

    const-string/jumbo v1, "Airplane Mode Enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mRevertCountryCodeOnCellularLoss:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableVerboseLogging(I)V
    .locals 1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    goto :goto_0
.end method

.method public declared-synchronized getCountryCode()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->pickCountryCode()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCountryCodeSentToDriver()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mCurrentCountryCode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isWifiOnly()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/wifi/WifiCountryCode;->mIsWifiOnly:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->checkAndSetConnectivityInstance()V

    iget-object v2, p0, Lcom/android/server/wifi/WifiCountryCode;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput v1, p0, Lcom/android/server/wifi/WifiCountryCode;->mIsWifiOnly:I

    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/server/wifi/WifiCountryCode;->mIsWifiOnly:I

    if-ne v2, v0, :cond_2

    :goto_1
    return v0

    :cond_1
    iput v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mIsWifiOnly:I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public declared-synchronized setCountryCode(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiCountryCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Receive set country code request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WifiCountryCode"

    const-string/jumbo v1, "Received empty country code, reset to default country code"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mReady:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->updateCountryCode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return v3

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mNeedToUpdateCountryCode:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method setCountryCodeNative(Ljava/lang/String;Z)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/wifi/WifiCountryCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "airplane_mode_on"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_2

    if-eqz p1, :cond_1

    const-string/jumbo v1, "FACTORY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiCountryCode;->isWifiOnly()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    xor-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "WifiCountryCode"

    const-string/jumbo v3, "[setCountryCodeNative] persist, Airplane mode return !!!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    const-string/jumbo v1, "FACTORY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "WifiCountryCode"

    const-string/jumbo v3, "[setCountryCodeNative-FACTORY] WlanTest - setCountryCode() !!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "FACTORY"

    const-string/jumbo v3, ""

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiCountryCode;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiNative;->setCountryCode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "WifiCountryCode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Succeeded to set country code to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/wifi/WifiCountryCode;->mCurrentCountryCode:Ljava/lang/String;

    return v5

    :cond_4
    const-string/jumbo v1, "TN"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CountryISO"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "IL"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CountryISO"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p2, :cond_3

    :cond_5
    const-string/jumbo v1, "ro.csc.countryiso_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WifiCountryCode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[setCountryCodeNative] Default CSC Country Code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    move-object p1, v0

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "WifiCountryCode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to set country code to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public declared-synchronized setReadyForChange(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiCountryCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set ready: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", update:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiCountryCode;->mNeedToUpdateCountryCode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiCountryCode;->mReady:Z

    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mNeedToUpdateCountryCode:Z

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mReady:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mNeedToUpdateCountryCode:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->updateCountryCode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setReadyForChangeAndUpdate(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiCountryCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set ready: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", update:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiCountryCode;->mNeedToUpdateCountryCode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiCountryCode;->mReady:Z

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mReady:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->updateCountryCode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized simCardRemoved()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiCountryCode"

    const-string/jumbo v1, "SIM Card Removed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mRevertCountryCodeOnCellularLoss:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mReady:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->updateCountryCode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
