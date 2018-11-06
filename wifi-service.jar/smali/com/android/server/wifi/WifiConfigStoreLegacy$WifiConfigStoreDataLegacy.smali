.class public Lcom/android/server/wifi/WifiConfigStoreLegacy$WifiConfigStoreDataLegacy;
.super Ljava/lang/Object;
.source "WifiConfigStoreLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConfigStoreLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiConfigStoreDataLegacy"
.end annotation


# instance fields
.field private mConfigurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mDeletedEphemeralSSIDs:Ljava/util/Set;
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
.method constructor <init>(Ljava/util/List;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStoreLegacy$WifiConfigStoreDataLegacy;->mConfigurations:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/wifi/WifiConfigStoreLegacy$WifiConfigStoreDataLegacy;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getConfigurations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStoreLegacy$WifiConfigStoreDataLegacy;->mConfigurations:Ljava/util/List;

    return-object v0
.end method

.method public getDeletedEphemeralSSIDs()Ljava/util/Set;
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

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStoreLegacy$WifiConfigStoreDataLegacy;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    return-object v0
.end method
