.class public Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
.super Ljava/lang/Object;
.source "DataEnabledSettings.java"


# static fields
.field public static final REASON_DATA_ENABLED_BY_CARRIER:I = 0x4

.field public static final REASON_INTERNAL_DATA_ENABLED:I = 0x1

.field public static final REASON_POLICY_DATA_ENABLED:I = 0x3

.field public static final REASON_REGISTERED:I = 0x0

.field public static final REASON_USER_DATA_ENABLED:I = 0x2


# instance fields
.field private mCarrierDataEnabled:Z

.field private final mDataEnabledChangedRegistrants:Landroid/os/RegistrantList;

.field private mInternalDataEnabled:Z

.field private mPolicyDataEnabled:Z

.field private mUserDataEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mUserDataEnabled:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mDataEnabledChangedRegistrants:Landroid/os/RegistrantList;

    return-void
.end method

.method private notifyDataEnabledChanged(ZI)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mDataEnabledChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized isCarrierDataEnabled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDataEnabled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mUserDataEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInternalDataEnabled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPolicyDataEnabled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isUserDataEnabled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mUserDataEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerForDataEnabledChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mDataEnabledChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->notifyDataEnabledChanged(ZI)V

    return-void
.end method

.method public declared-synchronized setCarrierDataEnabled(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v0

    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_0

    xor-int/lit8 v1, v0, 0x1

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->notifyDataEnabledChanged(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setInternalDataEnabled(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v0

    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_0

    xor-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->notifyDataEnabledChanged(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPolicyDataEnabled(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v0

    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_0

    xor-int/lit8 v1, v0, 0x1

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->notifyDataEnabledChanged(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setUserDataEnabled(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v0

    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mUserDataEnabled:Z

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_0

    xor-int/lit8 v1, v0, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->notifyDataEnabledChanged(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public unregisterForDataEnabledChanged(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mDataEnabledChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
