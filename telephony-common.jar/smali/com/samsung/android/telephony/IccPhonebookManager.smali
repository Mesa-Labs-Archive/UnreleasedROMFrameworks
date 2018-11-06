.class public Lcom/samsung/android/telephony/IccPhonebookManager;
.super Ljava/lang/Object;
.source "IccPhonebookManager.java"


# static fields
.field private static final EF_ADN:I = 0x6f3a

.field static final LOG_TAG:Ljava/lang/String; = "IccPBManager"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdnLikesInfo(II)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/telephony/IccPhonebookManager;->getIccPhoneBookInterface()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/telephony/IccPhonebookManager;->getSubId(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesInfoForSubscriber(II)[I

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "IccPBManager"

    const-string/jumbo v2, "IIccPhoneBook is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public static getAdnLikesSimStatusInfo(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/telephony/IccPhonebookManager;->getIccPhoneBookInterface()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/telephony/IccPhonebookManager;->getSubId(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesSimStatusInfoForSubscriber(II)I

    move-result v1

    return v1

    :cond_0
    const-string/jumbo v1, "IccPBManager"

    const-string/jumbo v2, "IIccPhoneBook is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private static getIccPhoneBookInterface()Lcom/android/internal/telephony/IIccPhoneBook;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "IccPBManager"

    const-string/jumbo v3, "SecurityException occured"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getSubId(I)I
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    aget v1, v0, v2

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public static getUsimPBCapaInfo(I)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {}, Lcom/samsung/android/telephony/IccPhonebookManager;->getIccPhoneBookInterface()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/telephony/IccPhonebookManager;->getSubId(I)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfoForSubscriber(I)Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->mFieldTypeInfo:[I

    return-object v2

    :cond_0
    const-string/jumbo v2, "IccPBManager"

    const-string/jumbo v3, "usimPbCapaInfo is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    const-string/jumbo v2, "IccPBManager"

    const-string/jumbo v3, "IIccPhoneBook is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method
