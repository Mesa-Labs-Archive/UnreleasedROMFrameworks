.class public Lcom/android/internal/telephony/CarrierServicesSmsFilter;
.super Ljava/lang/Object;
.source "CarrierServicesSmsFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;,
        Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;,
        Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;,
        Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true


# instance fields
.field private final mCarrierServicesSmsFilterCallback:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;

.field private final mContext:Landroid/content/Context;

.field private final mDestPort:I

.field private final mLogTag:Ljava/lang/String;

.field private final mPduFormat:Ljava/lang/String;

.field private final mPdus:[[B

.field private final mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mCarrierServicesSmsFilterCallback:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->logv(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;[[BILjava/lang/String;Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object p3, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPdus:[[B

    iput p4, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mDestPort:I

    iput-object p5, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPduFormat:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mCarrierServicesSmsFilterCallback:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;

    iput-object p7, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mLogTag:Ljava/lang/String;

    return-void
.end method

.method private filterWithPackage(Ljava/lang/String;Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;)V
    .locals 5

    new-instance v0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPdus:[[B

    iget v3, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mDestPort:I

    iget-object v4, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPduFormat:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;-><init>(Lcom/android/internal/telephony/CarrierServicesSmsFilter;[[BILjava/lang/String;)V

    new-instance v1, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;-><init>(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;Landroid/telephony/CarrierMessagingServiceManager;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->filterSms(Ljava/lang/String;Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;)V

    return-void
.end method

.method private getCarrierAppPackageForFiltering()Ljava/util/Optional;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v7, :cond_1

    const-string/jumbo v3, "Found carrier package."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->log(Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mLogTag:Ljava/lang/String;

    const-string/jumbo v4, "UiccCard not initialized."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->getSystemAppForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v7, :cond_2

    const-string/jumbo v3, "Found system package."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->log(Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    return-object v3

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to find carrier package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", nor systemPackages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->logv(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v3

    return-object v3
.end method

.method private getSystemAppForIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    const-string/jumbo v0, "android.permission.CARRIER_FILTER_SMS"

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Can\'t get service information from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSystemAppForIntent: added package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object v5
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mLogTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mLogTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mLogTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public filter()Z
    .locals 11

    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->getCarrierAppPackageForFiltering()Ljava/util/Optional;

    move-result-object v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8, v9}, Lcom/android/internal/telephony/CarrierSmsUtils;->getCarrierImsPackageForIntent(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v2, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v2, p0, v7}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;-><init>(Lcom/android/internal/telephony/CarrierServicesSmsFilter;I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->filterWithPackage(Ljava/lang/String;Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;)V

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method
